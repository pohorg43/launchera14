.class public final Lo5/e0;
.super Lo5/a0;
.source ""

# interfaces
.implements Ly5/w;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaRecordComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaRecordComponent.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaRecordComponent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo5/a0;-><init>()V

    iput-object p1, p0, Lo5/e0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public N()Ljava/lang/reflect/Member;
    .registers 8

    iget-object p0, p0, Lo5/e0;->a:Ljava/lang/Object;

    const-string v0, "recordComponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/a;->a:Lo5/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_11
    new-instance v3, Lo5/a$a;

    const-string v4, "getType"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getAccessor"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lo5/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_26} :catch_28

    move-object v0, v3

    goto :goto_2d

    :catch_28
    new-instance v0, Lo5/a$a;

    invoke-direct {v0, v2, v2}, Lo5/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_2d
    sput-object v0, Lo5/a;->a:Lo5/a$a;

    :cond_2f
    iget-object v0, v0, Lo5/a$a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_34

    goto :goto_42

    :cond_34
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.reflect.Method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/Method;

    :goto_42
    if-eqz v2, :cond_45

    return-object v2

    :cond_45
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getAccessor` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getType()Ly5/x;
    .registers 8

    iget-object p0, p0, Lo5/e0;->a:Ljava/lang/Object;

    const-string v0, "recordComponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo5/a;->a:Lo5/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_11
    new-instance v3, Lo5/a$a;

    const-string v4, "getType"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getAccessor"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lo5/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_26} :catch_28

    move-object v0, v3

    goto :goto_2d

    :catch_28
    new-instance v0, Lo5/a$a;

    invoke-direct {v0, v2, v2}, Lo5/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_2d
    sput-object v0, Lo5/a;->a:Lo5/a$a;

    :cond_2f
    iget-object v0, v0, Lo5/a$a;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_34

    goto :goto_42

    :cond_34
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    :goto_42
    if-eqz v2, :cond_4a

    new-instance p0, Lo5/u;

    invoke-direct {p0, v2}, Lo5/u;-><init>(Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_4a
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getType` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
