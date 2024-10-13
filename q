RM(1)                                               User Commands                                               RM(1)

NNAAMMEE
       rm - remove files or directories

SSYYNNOOPPSSIISS
       rrmm [_O_P_T_I_O_N]... [_F_I_L_E]...

DDEESSCCRRIIPPTTIIOONN
       This  manual  page  documents the GNU version of rrmm.  rrmm removes each specified file.  By default, it does not
       remove directories.

       If the _-_I or _-_-_i_n_t_e_r_a_c_t_i_v_e_=_o_n_c_e option is given, and there are more than three files or the _-_r, _-_R,  or  _-_-_r_e_‐
       _c_u_r_s_i_v_e are given, then rrmm prompts the user for whether to proceed with the entire operation.  If the response
       is not affirmative, the entire command is aborted.

       Otherwise, if a file is unwritable, standard input is a terminal, and the _-_f or _-_-_f_o_r_c_e option is  not  given,
       or the _-_i or _-_-_i_n_t_e_r_a_c_t_i_v_e_=_a_l_w_a_y_s option is given, rrmm prompts the user for whether to remove the file.  If the
       response is not affirmative, the file is skipped.

OOPPTTIIOONNSS
       Remove (unlink) the FILE(s).

       --ff, ----ffoorrccee
              ignore nonexistent files and arguments, never prompt

       --ii     prompt before every removal

       --II     prompt once before removing more than three files, or when removing recursively;  less  intrusive  than
              --ii, while still giving protection against most mistakes

       ----iinntteerraaccttiivvee[=_W_H_E_N]
              prompt according to WHEN: never, once (--II), or always (--ii); without WHEN, prompt always

       ----oonnee--ffiillee--ssyysstteemm
              when  removing a hierarchy recursively, skip any directory that is on a file system different from that
              of the corresponding command line argument

       ----nnoo--pprreesseerrvvee--rroooott
              do not treat '/' specially

       ----pprreesseerrvvee--rroooott[=_a_l_l]
              do not remove '/' (default); with 'all', reject any command line argument on a separate device from its
              parent

       --rr, --RR, ----rreeccuurrssiivvee
              remove directories and their contents recursively

       --dd, ----ddiirr
              remove empty directories

       --vv, ----vveerrbboossee
              explain what is being done

       ----hheellpp display this help and exit

       ----vveerrssiioonn
              output version information and exit

       By  default,  rm does not remove directories.  Use the ----rreeccuurrssiivvee (--rr or --RR) option to remove each listed di‐
       rectory, too, along with all of its contents.

       To remove a file whose name starts with a '-', for example '-foo', use one of these commands:

              rm ---- --ffoooo

              rm ./-foo

       Note that if you use rm to remove a file, it might be possible to recover some of its contents,  given  suffi‐
       cient  expertise and/or time.  For greater assurance that the contents are truly unrecoverable, consider using
       shred.

AAUUTTHHOORR
       Written by Paul Rubin, David MacKenzie, Richard M. Stallman, and Jim Meyering.

RREEPPOORRTTIINNGG BBUUGGSS
       GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
       Report any translation bugs to <https://translationproject.org/team/>

CCOOPPYYRRIIGGHHTT
       Copyright  ©  2020  Free  Software  Foundation,  Inc.   License  GPLv3+:  GNU   GPL   version   3   or   later
       <https://gnu.org/licenses/gpl.html>.
       This  is  free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent per‐
       mitted by law.

SSEEEE AALLSSOO
       unlink(1), unlink(2), chattr(1), shred(1)

       Full documentation <https://www.gnu.org/software/coreutils/rm>
       or available locally via: info '(coreutils) rm invocation'

GNU coreutils 8.32                                  February 2024                                               RM(1)
