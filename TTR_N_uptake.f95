!========================================================================================!
subroutine N_uptake 
!----------------------------------------------------------------------------------------!
 use TTR_parameters
 use TTR_variables
 !---------------------------------------------------------------------------------------!
 implicit none
 !---------------------------------------------------------------------------------------!

   !-------------------------------------------------------------------------------------!
   ! N uptake by the fine roots and mycorrhiza
   !-------------------------------------------------------------------------------------!
   c_U_N   = c_U_N20 - (c_U_N20 - c_U_N10) * ((20.0 - T_soil) / (20.0 - 10.0))
   sigma_N = sigma_N20 * T_soil
   N_eff   = N_amm + c_U_N * N_nit
   U_N     = (M_f_X * sigma_N * N_eff) /                                                 &
             (1.0 + ((K_c_U_N / C_f) * (N_f / J_N_U_N))) 
   !write (*, '(5f12.5)') M_f_X, K_c_U_N, C_f, N_f, J_N_U_N
   
   ! Set subroutine outputs - TTR
   !-------------------------------------------------------------------------------------!
   !U_N     = 0.005

   U_N_nit = U_N * ((c_U_N * N_nit) / N_eff)
   U_N_amm = U_N * (N_amm / N_eff)

   ! Convert to uptake per timestep
   !-------------------------------------------------------------------------------------!
   U_N     = U_N     * dt
   U_N_amm = U_N_amm * dt
   U_N_nit = U_N_nit * dt
   
   !-------------------------------------------------------------------------------------!
   !write (*, '(6a12)')   'U_N', 'U_N_nit', 'U_N_amm', 'c_U_N', 'sigma_N', 'N_eff'
   !write (*, '(6f12.5)')  U_N,   U_N_nit,   U_N_amm,   c_U_N,   sigma_N,   N_eff
   
    
!----------------------------------------------------------------------------------------!
end subroutine N_uptake
!========================================================================================!