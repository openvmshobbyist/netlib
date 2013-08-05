 !********************************************************************************************************************************
 ! Created:  5-Aug-2013 21:28:48 by OpenVMS SDL EV2-3      
 ! Source:  05-AUG-2013 21:28:38 MG_SRC:[NETLIB]NETLIBDEF.SDL;24 
 !********************************************************************************************************************************
      ! *** PREDECLARED TYPES
     
      %IF %DECLARED(%BASIC$QUADWORD_DECLARED) = 0 %THEN
         RECORD BASIC$QUADWORD
            LONG FILL(2)
         END RECORD
         %LET %BASIC$QUADWORD_DECLARED = 1
      %END %IF
     
      %IF %DECLARED(%BASIC$OCTAWORD_DECLARED) = 0 %THEN
         RECORD BASIC$OCTAWORD
            LONG FILL(4)
         END RECORD
         %LET %BASIC$OCTAWORD_DECLARED = 1
      %END %IF
     
      %IF %DECLARED(%BASIC$F_FLOATING_COMPLEX_DECL) = 0 %THEN
         RECORD BASIC$F_FLOATING_COMPLEX
            SINGLE REAL_PART
            SINGLE IMAGINARY_PART
         END RECORD
         %LET %BASIC$F_FLOATING_COMPLEX_DECL = 1
      %END %IF
     
      %IF %DECLARED(%BASIC$D_FLOATING_COMPLEX_DECL) = 0 %THEN
         RECORD BASIC$D_FLOATING_COMPLEX
            DOUBLE REAL_PART
            DOUBLE IMAGINARY_PART
         END RECORD
         %LET %BASIC$D_FLOATING_COMPLEX_DECL = 1
      %END %IF
     
      %IF %DECLARED(%BASIC$G_FLOATING_COMPLEX_DECL) = 0 %THEN
         RECORD BASIC$G_FLOATING_COMPLEX
            GFLOAT REAL_PART
            GFLOAT IMAGINARY_PART
         END RECORD
         %LET %BASIC$G_FLOATING_COMPLEX_DECL = 1
      %END %IF
     
      %IF %DECLARED(%BASIC$H_FLOATING_COMPLEX_DECL) = 0 %THEN
         RECORD BASIC$H_FLOATING_COMPLEX
            HFLOAT REAL_PART
            HFLOAT IMAGINARY_PART
         END RECORD
         %LET %BASIC$H_FLOATING_COMPLEX_DECL = 1
      %END %IF
     
    
    !*** MODULE NETLIBDEF ***
    
    
      DECLARE LONG CONSTANT NETLIB_K_TYPE_STREAM = 1
      DECLARE LONG CONSTANT NETLIB_K_TYPE_DGRAM = 2
      DECLARE LONG CONSTANT NETLIB_K_OPTION_REUSEADDR = 4
      DECLARE LONG CONSTANT NETLIB_K_OPTION_KEEPALIVE = 8
      DECLARE LONG CONSTANT NETLIB_K_OPTION_BROADCAST = 32
      DECLARE LONG CONSTANT NETLIB_K_OPTION_SNDBUF = 4097
      DECLARE LONG CONSTANT NETLIB_K_OPTION_RCVBUF = 4098
      DECLARE LONG CONSTANT NETLIB_K_OPTION_SNDLOWAT = 4099
      DECLARE LONG CONSTANT NETLIB_K_OPTION_RCVLOWAT = 4100
      DECLARE LONG CONSTANT NETLIB_K_LEVEL_SOCKET = 65535
      DECLARE LONG CONSTANT NETLIB_K_AF_INET = 2
      DECLARE LONG CONSTANT NETLIB_K_LOOKUP_DNS = 1
      DECLARE LONG CONSTANT NETLIB_K_LOOKUP_HOST_TABLE = 2
      DECLARE LONG CONSTANT NETLIB_K_SHUTDOWN_RECEIVER = 0
      DECLARE LONG CONSTANT NETLIB_K_SHUTDOWN_SENDER = 1
      DECLARE LONG CONSTANT NETLIB_K_SHUTDOWN_BOTH = 2
      DECLARE LONG CONSTANT NETLIB_M_ALLOW_LF = 1
      DECLARE LONG CONSTANT NETLIB_M_FLUSH = 2
      DECLARE LONG CONSTANT NETLIB_M_ALLOW_CR = 4
      DECLARE LONG CONSTANT NETLIB_M_DOMAIN_SEARCH = 1
      DECLARE LONG CONSTANT NETLIB_M_NO_RECURSION = 2
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_A = 1
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_NS = 2
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MD = 3
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MF = 4
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_CNAME = 5
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_SOA = 6
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MB = 7
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MG = 8
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MR = 9
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_NULL = 10
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_WKS = 11
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_PTR = 12
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_HINFO = 13
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MINFO = 14
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MX = 15
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_TXT = 16
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_RP = 17
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_AFSDB = 18
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_X25 = 19
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_ISDN = 20
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_RT = 21
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_NSAP = 22
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_NSAP_PTR = 23
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_SIG = 24
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_KEY = 25
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_PX = 26
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_GPOS = 27
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_AAAA = 28
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_LOC = 29
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_UINFO = 100
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_UID = 101
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_GID = 102
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_UNSPEC = 103
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_AXFR = 252
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MAILB = 253
      DECLARE LONG CONSTANT NETLIB_K_DNS_TYPE_MAILA = 254
      DECLARE LONG CONSTANT NETLIB_K_DNS_QTYPE_ALL = 255
      DECLARE LONG CONSTANT NETLIB_K_DNS_CLASS_IN = 1
      DECLARE LONG CONSTANT NETLIB_K_DNS_CLASS_CS = 2
      DECLARE LONG CONSTANT NETLIB_K_DNS_CLASS_CH = 3
      DECLARE LONG CONSTANT NETLIB_K_DNS_CLASS_HS = 4
      DECLARE LONG CONSTANT NETLIB_K_DNS_QCLASS_ALL = 255
      DECLARE LONG CONSTANT NETLIB_K_DNS_OP_STDQ = 0
      DECLARE LONG CONSTANT NETLIB_K_DNS_OP_INVQ = 1
      DECLARE LONG CONSTANT NETLIB_K_DNS_OP_STATUS = 2
      DECLARE LONG CONSTANT NETLIB_K_DNS_RC_SUCCESS = 0
      DECLARE LONG CONSTANT NETLIB_K_DNS_RC_FMTERR = 1
      DECLARE LONG CONSTANT NETLIB_K_DNS_RC_SRVFAIL = 2
      DECLARE LONG CONSTANT NETLIB_K_DNS_RC_NAMERR = 3
      DECLARE LONG CONSTANT NETLIB_K_DNS_RC_NOTIMP = 4
      DECLARE LONG CONSTANT NETLIB_K_DNS_RC_REFUSE = 5
      DECLARE LONG CONSTANT dns_m_recursion_desired = x'00000001'
      DECLARE LONG CONSTANT dns_m_truncated = x'00000001'
      DECLARE LONG CONSTANT dns_m_authoritative = x'00000001'
      DECLARE LONG CONSTANT dns_m_opcode = x'0000000F'
      DECLARE LONG CONSTANT dns_m_reply = x'00000001'
      DECLARE LONG CONSTANT dns_m_reply_code = x'0000000F'
      DECLARE LONG CONSTANT dns_m_xx_unused_xx = x'00000007'
      DECLARE LONG CONSTANT dns_m_recursion_available = x'00000001'
      DECLARE LONG CONSTANT dns_S_NETLIB_DNS_HEADER = 12
      record NETLIB_DNS_HEADER
         WORD dns_w_queryid
         group dns_r_flags_overlay
            variant
               case
                  WORD dns_w_flags
               case
                  group dns_x_flags
                     variant
                     case
                        WORD recursion_desired_bits   ! COMMENT ADDED BY SDL - recursion_desired_bits contains bits  &
 ! recursion_desired through recursion_available
                     end variant
                  end group dns_x_flags
            end variant
         end group dns_r_flags_overlay
         WORD dns_w_qdcount
         WORD dns_w_ancount
         WORD dns_w_nscount
         WORD dns_w_arcount
      end record NETLIB_DNS_HEADER
    
      DECLARE LONG CONSTANT SOCKADDR_S_DATA = 14
      DECLARE LONG CONSTANT sockaddr_S_SOCKADDRDEF = 16
      record SOCKADDRDEF
         WORD sockaddr_w_family
         BYTE sockaddr_x_data(1 to 14)
      end record SOCKADDRDEF
    
      DECLARE LONG CONSTANT inaddr_S_INADDRDEF = 4
      record INADDRDEF
         LONG inaddr_l_addr
      end record INADDRDEF
    
      DECLARE LONG CONSTANT SIN_S_MBZ = 8
      DECLARE LONG CONSTANT sin_S_SINDEF = 16
      record SINDEF
         WORD sin_w_family
         WORD sin_w_port
         INADDRDEF sin_x_addr
         BYTE sin_x_mbz(1 to 8)
      end record SINDEF
    
      DECLARE LONG CONSTANT iosb_S_NETLIBIOSBDEF = 8
      record NETLIBIOSBDEF
         WORD iosb_w_status
         WORD iosb_w_count
         LONG iosb_l_unused
      end record NETLIBIOSBDEF
    
      DECLARE LONG CONSTANT NETLIB_S_MXRR_NAME = 128
      DECLARE LONG CONSTANT mxrr_S_MXRRDEF = 136
      record MXRRDEF
         LONG mxrr_l_preference
         LONG mxrr_l_length
         STRING mxrr_t_name = 128
      end record MXRRDEF
    
      DECLARE LONG CONSTANT NETLIB_K_METHOD_ANY = 0
      DECLARE LONG CONSTANT NETLIB_K_METHOD_SSL2 = 1
      DECLARE LONG CONSTANT NETLIB_K_METHOD_SSL3 = 2
      DECLARE LONG CONSTANT NETLIB_K_METHOD_TLS1 = 3
      DECLARE LONG CONSTANT NETLIB_K_FILETYPE_PEM = 1
      DECLARE LONG CONSTANT NETLIB_K_FILETYPE_ASN1 = 2
      EXTERNAL LONG FUNCTION  netlib_socket
      EXTERNAL LONG FUNCTION  netlib_server_setup
      EXTERNAL LONG FUNCTION  netlib_bind
      EXTERNAL LONG FUNCTION  netlib_getsockname
      EXTERNAL LONG FUNCTION  netlib_getpeername
    ! 
      EXTERNAL LONG FUNCTION  netlib_connect
      EXTERNAL LONG FUNCTION  netlib_write
      EXTERNAL LONG FUNCTION  netlib_writeline
      EXTERNAL LONG FUNCTION  netlib_read
      EXTERNAL LONG FUNCTION  netlib_readline
      EXTERNAL LONG FUNCTION  netlib_shutdown
      EXTERNAL LONG FUNCTION  netlib_close
      EXTERNAL LONG FUNCTION  netlib_listen
      EXTERNAL LONG FUNCTION  netlib_accept
      EXTERNAL LONG FUNCTION  netlib_get_hostname
      EXTERNAL LONG FUNCTION  netlib_setsockopt
      EXTERNAL LONG FUNCTION  netlib_getsockopt
      EXTERNAL LONG FUNCTION  netlib_name_to_address
      EXTERNAL LONG FUNCTION  netlib_address_to_name
      EXTERNAL LONG FUNCTION  netlib_dns_skipname
      EXTERNAL LONG FUNCTION  netlib_dns_expandname
      EXTERNAL LONG FUNCTION  netlib_dns_query
      EXTERNAL LONG FUNCTION  netlib_strtoaddr
      EXTERNAL LONG FUNCTION  netlib_addrtostr
      EXTERNAL LONG FUNCTION  netlib_connect_by_name
      EXTERNAL LONG FUNCTION  netlib_dns_mx_lookup
      EXTERNAL LONG FUNCTION  netlib_hton_long
      EXTERNAL LONG FUNCTION  netlib_ntoh_long
      EXTERNAL WORD FUNCTION  netlib_hton_word
      EXTERNAL WORD FUNCTION  netlib_ntoh_word
      EXTERNAL LONG FUNCTION  netlib_version
      EXTERNAL LONG FUNCTION  netlib_ssl_context
    ! 
    !  NETLIB_SSL_SOCKET
    ! 
      EXTERNAL LONG FUNCTION  netlib_ssl_socket &
               ( &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY REF &
               )
    ! 
    !  NETLIB_SSL_ACCEPT
    ! 
      EXTERNAL LONG FUNCTION  netlib_ssl_accept &
               ( &
                   LONG  BY REF, &
                   BASIC$QUADWORD  BY REF, &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY VALUE &
               )
    ! 
    !  NETLIB_SSL_CONNECT
    ! 
      EXTERNAL LONG FUNCTION  netlib_ssl_connect &
               ( &
                   LONG  BY REF, &
                   BASIC$QUADWORD  BY REF, &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY VALUE &
               )
    ! 
    !  NETLIB_SSL_SHUTDOWN
    ! 
      EXTERNAL LONG FUNCTION  netlib_ssl_shutdown &
               ( &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY VALUE &
               )
    ! 
    !  NETLIB_SSL_READ
    ! 
      EXTERNAL LONG FUNCTION  netlib_ssl_read &
               ( &
                   LONG  BY REF, &
                   STRING  BY DESC, &
                   BASIC$QUADWORD  BY REF, &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY VALUE &
               )
    ! 
    !  NETLIB_SSL_WRITE
    ! 
      EXTERNAL LONG FUNCTION  netlib_ssl_read &
               ( &
                   LONG  BY REF, &
                   STRING  BY DESC, &
                   BASIC$QUADWORD  BY REF, &
                   LONG  BY REF, &
                   LONG  BY REF, &
                   LONG  BY VALUE &
               )
