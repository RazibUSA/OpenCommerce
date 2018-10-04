//
//  CustomerController.swift
//  App
//
//  Created by Razib Mollick on 10/1/18.
//

import Vapor

final class CustomerController: RouteCollection {
    func boot(router: Router) throws {
        let customerRoute = router.grouped("api", "customer")
        customerRoute.get(use: getCustomers)
        customerRoute.get(Customer.parameter, use: getCustomer)
        customerRoute.post(use: createCustomer)
        customerRoute.put(Customer.parameter, use: editCustomer)
        customerRoute.delete(Customer.parameter, use: deleteCustomer)
    }
    
    
    func createCustomer(_ req: Request) throws -> Future<Customer> {
        return try req.content.decode(Customer.self).flatMap { (customer) in
            return customer.save(on: req)
        }
    }
    
    func getCustomers(_ req: Request) throws -> Future<[Customer]> {
        return Customer.query(on: req).decode(Customer.self).all()
    }
    
    func getCustomer(_ req: Request) throws -> Future<Customer> {
        return try req.parameters.next(Customer.self)
    }
    
    func editCustomer(_ req: Request) throws -> Future<Customer> {
        return try flatMap(to: Customer.self, req.parameters.next(Customer.self), req.content.decode(Customer.self)) { (customer, modifyCustomer) in
            customer.name = modifyCustomer.name
            customer.username = modifyCustomer.username
            return customer.save(on: req)
        }
    }
    
    func deleteCustomer(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(Customer.self).flatMap { (customer) in
            return customer.delete(on: req).transform(to: HTTPStatus.noContent)
        }
    }
    
    
}
