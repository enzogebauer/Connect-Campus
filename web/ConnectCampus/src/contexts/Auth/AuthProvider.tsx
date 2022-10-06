import {createContext} from 'react'
import { User } from '../../types/User';
export type AuthContext = {
    user: User | null;
    sigin:(email:string,password:string)=> Promise<boolean>;
    signout:()=> void;
}
export const AuthContext = createContext<AuthContext>(null!);