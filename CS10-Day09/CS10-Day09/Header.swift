//
//  header.swift
//  CS10-Day09
//
//  Created by 지북 on 2021/02/01.
//

import Foundation

struct Header {
    static let disney : String = """
    GET /home/index.jsp HTTP/1.1
    Host: www.disney.co.kr
    User-Agent: Mozilla/5.0
    Accept: text/html
    """
    
    static let khan : String = """
    GET / HTTP/1.1
    Host: www.khan.co.kr
    User-Agent: Mozilla/5.0
    Accept: text/html
    """
    
    
   static let hani : String = """
    GET / HTTP/1.1
    Host: www.hani.co.kr
    User-Agent: Mozilla/5.0
    Accept: text/html
    """
    
    static let yes24 : String = """
    GET / HTTP/1.1
    Host: www.yes24.com
    User-Agent: Mozilla/5.0
    Accept: text/html
    """
    
    
    static let kyobo : String = """
    GET /index.laf HTTP/1.1
    Host: www.kyobobook.co.kr
    User-Agent: Mozilla/5.0
    Accept: text/html
    """
    
    
}
