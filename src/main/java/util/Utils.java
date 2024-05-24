package util;

import jakarta.servlet.http.HttpServletRequest;
import model.User;

import java.util.Map;

public class Utils {

    public static boolean idIsNumber(HttpServletRequest request) {
        final String id = request.getParameter("id");
        return id != null &&
                (!id.isEmpty()) &&
                id.matches("[+]?\\d+");
    }

    public static boolean requestIsValid(HttpServletRequest request) {
        final String name = request.getParameter("name");
        final String age = request.getParameter("age");

        return name != null && !name.isEmpty() &&
                age != null && !age.isEmpty() &&
                age.matches("[+]?\\d+");
    }

    public static User createStubUser(final int id,
                                      final String name,
                                      final int age) {
        return new User(id, name, age);
    }

    public static boolean idIsInvalid(final String id, Map<Integer, User> repo) {
        return !(id != null &&
                id.matches("[+]?\\d+") &&
                repo.get(Integer.parseInt(id)) != null);
    }
}
