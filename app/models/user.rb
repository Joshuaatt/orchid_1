class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


# database_authenticatable – ensures that a user enters a correct password,
# and it encrypts the said password, before saving it.
#
# confirmable – ensures newly registered users confirm their accounts by
# clicking a link on a (Devise sent) mail they receive. This is a defence
# against bots creating fake, but valid, users.
#
# recoverable – for handling forgotten passwords safely.
#
# registerable – allows users to register themselves, and subsequently change
# their login credentials.
#
# rememberable – for transparently logging on a user, based on a cookie. This is
# the functionality associated with the Remember me? checkbox you often see on
# login forms. Since the Devise config file specifies a timeout period, this is
# often of limited use. And is a security risk if the user steps away from their
# browser, with others about.
#
# trackable – stores login information i.e. the user’s IP address, login time,
# last login time, and the total number of logins. These values are generally for
# site admins to look at, when trying to trace unusual activity.
#
# validatable – ensures that the given email/name and passwords conform to a
# particular format.
#
# lockable – limits the number of login attempts allowed before further access
# to a particular account is prohibited. Access restrictions are lifted after a
# time span, or if a (legitimate) user requests that an email be sent that
# contains a link to unblock his/her account.
