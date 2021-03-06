!========================================================================================!
subroutine utilisation
!----------------------------------------------------------------------------------------!
 use TTR_parameters
 use TTR_variables
 !---------------------------------------------------------------------------------------!
 implicit none
 !---------------------------------------------------------------------------------------!

   !-------------------------------------------------------------------------------------! 
   ! Utilisation (U) of C substrate                             ([kg C] [stem]-1 [d]-1)
   !-------------------------------------------------------------------------------------!
   U_C_l_G = (f_C_l_M * G_M_l_M) / (Y_l_M) + (f_C_l_X * G_M_l_X) / (Y_l_X) ! Leaves
   U_C_b_G = (f_C_b_M * G_M_b_M) / (Y_b_M) + (f_C_b_X * G_M_b_X) / (Y_b_X) ! Branches
   U_C_s_G = (f_C_s_M * G_M_s_M) / (Y_s_M) + (f_C_s_X * G_M_s_X) / (Y_s_X) ! Stems
   U_C_c_G = (f_C_c_M * G_M_c_M) / (Y_c_M) + (f_C_c_X * G_M_c_X) / (Y_c_X) ! Coarse roots
   U_C_f_G = (f_C_f_M * G_M_f_M) / (Y_f_M) + (f_C_f_X * G_M_f_X) / (Y_f_X) ! Fine roots

   
   !-------------------------------------------------------------------------------------!
   ! Utilisation (U) of N substrate                             ([kg N] [stem]-1 [d]-1)
   !-------------------------------------------------------------------------------------!
   U_N_l_G = f_N_l_M * G_M_l_M + f_N_l_X * G_M_l_X ! Leaves
   U_N_b_G = f_N_b_M * G_M_b_M + f_N_b_X * G_M_b_X ! Branches
   U_N_s_G = f_N_s_M * G_M_s_M + f_N_s_X * G_M_s_X ! Stems
   U_N_c_G = f_N_c_M * G_M_c_M + f_N_c_X * G_M_c_X ! Coarse roots
   U_N_f_G = f_N_f_M * G_M_f_M + f_N_f_X * G_M_f_X ! Fine roots

    
   ! Convert to C utilisation (U) per timestep                  ([kg C] [stem]-1 [tsp]-1)
   !-------------------------------------------------------------------------------------!
   U_C_l_G = U_C_l_G * dt
   U_C_b_G = U_C_b_G * dt
   U_C_s_G = U_C_s_G * dt
   U_C_c_G = U_C_c_G * dt
   U_C_f_G = U_C_f_G * dt
   
   
   ! Convert to N utilisation (U) per timestep                  ([kg N] [stem]-1 [tsp]-1)
   !-------------------------------------------------------------------------------------!
   U_N_l_G = U_N_l_G * dt
   U_N_b_G = U_N_b_G * dt
   U_N_s_G = U_N_s_G * dt
   U_N_c_G = U_N_c_G * dt
   U_N_f_G = U_N_f_G * dt
   
   
!----------------------------------------------------------------------------------------!
end subroutine utilisation
!========================================================================================!
