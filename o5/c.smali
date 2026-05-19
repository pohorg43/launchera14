.class public final Lo5/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo5/c$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaMember.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaMember.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/Java8ParameterNamesLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,105:1\n1#2:106\n11335#3:107\n11670#3,3:108\n*S KotlinDebug\n*F\n+ 1 ReflectJavaMember.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/Java8ParameterNamesLoader\n*L\n100#1:107\n100#1:108,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lo5/c;

.field public static b:Lo5/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo5/c;

    invoke-direct {v0}, Lo5/c;-><init>()V

    sput-object v0, Lo5/c;->a:Lo5/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Member;)Lo5/c$a;
    .registers 5

    const-string p0, "member"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :try_start_9
    const-string p1, "getParameters"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_12} :catch_2a

    invoke-static {p0}, Lo5/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "java.lang.reflect.Parameter"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Lo5/c$a;

    new-array v0, v0, [Ljava/lang/Class;

    const-string v2, "getName"

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lo5/c$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v1

    :catch_2a
    new-instance p0, Lo5/c$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lo5/c$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object p0
.end method
