# coding: utf-8

"""
    EMS API Documentation

    Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps  # noqa: E501

    OpenAPI spec version: 0.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from swagger_client.models.push_where_object_device_token import PushWhereObjectDeviceToken  # noqa: F401,E501


class PushWhereObject(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'device_type': 'str',
        'device_token': 'PushWhereObjectDeviceToken'
    }

    attribute_map = {
        'device_type': 'deviceType',
        'device_token': 'deviceToken'
    }

    def __init__(self, device_type=None, device_token=None):  # noqa: E501
        """PushWhereObject - a model defined in Swagger"""  # noqa: E501

        self._device_type = None
        self._device_token = None
        self.discriminator = None

        if device_type is not None:
            self.device_type = device_type
        if device_token is not None:
            self.device_token = device_token

    @property
    def device_type(self):
        """Gets the device_type of this PushWhereObject.  # noqa: E501


        :return: The device_type of this PushWhereObject.  # noqa: E501
        :rtype: str
        """
        return self._device_type

    @device_type.setter
    def device_type(self, device_type):
        """Sets the device_type of this PushWhereObject.


        :param device_type: The device_type of this PushWhereObject.  # noqa: E501
        :type: str
        """
        allowed_values = ["ios", "android"]  # noqa: E501
        if device_type not in allowed_values:
            raise ValueError(
                "Invalid value for `device_type` ({0}), must be one of {1}"  # noqa: E501
                .format(device_type, allowed_values)
            )

        self._device_type = device_type

    @property
    def device_token(self):
        """Gets the device_token of this PushWhereObject.  # noqa: E501


        :return: The device_token of this PushWhereObject.  # noqa: E501
        :rtype: PushWhereObjectDeviceToken
        """
        return self._device_token

    @device_token.setter
    def device_token(self, device_token):
        """Sets the device_token of this PushWhereObject.


        :param device_token: The device_token of this PushWhereObject.  # noqa: E501
        :type: PushWhereObjectDeviceToken
        """

        self._device_token = device_token

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(PushWhereObject, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, PushWhereObject):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
