class TCPClosed : public TCPState {
    public:
        static TCPState* Instance();
        
        virtual void ActiveOpen(TCPConnection*);
        virtual void PassiveOpen(TCPConnection*);
        // ...
        
        void TCPClosed::ActiveOpen (TCPConnection* t) {
            // send SYN, receive SYN, ACK, etc.
            ChangeState(t, TCPEstablished::Instance());
        }
        
        void TCPClosed::PassiveOpen (TCPConnection* t) {
            ChangeState(t, TCPListen::Instance());
        }
};
