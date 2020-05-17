//
// SayHelloPlugin.swift
// HelloCordova
//
// Created by Deepak Singh on 17/05/20.
//
import Foundation


class SayHelloPlugin : CDVPlugin{
@objc(sayHello:)
func sayHello(command : CDVInvokedUrlCommand) //this method will be called web app
{
let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Hey I am Dexter, Hope this helps")
self.commandDelegate.send(result, callbackId: command.callbackId)
}
}
