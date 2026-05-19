.class public final Lk3/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh4/f;

.field public static final b:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lk3/j$a;->a:Lk3/j$a;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lk3/j;->a:Lh4/f;

    sget-object v0, Lk3/j$b;->a:Lk3/j$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lk3/j;->b:Lh4/f;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Ljava/lang/String;

    const-string v1, "OSUtils"

    const-string v2, "key"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defValue"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperties get: key == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", defValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "cls.getMethod(\"get\", Str…java, String::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "method.invoke(null, key, defValue)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_54} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_54} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_54} :catch_55

    return-object p0

    :catch_55
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties get InvocationTargetException: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :catch_64
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties get IllegalArgumentException: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :catch_73
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties get IllegalAccessException: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_81
    return-object p1
.end method
