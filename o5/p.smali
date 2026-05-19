.class public final Lo5/p;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Class<",
        "*>;",
        "Lh6/f;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReflectJavaClass.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaClass.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/ReflectJavaClass$innerClassNames$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n1#2:202\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lo5/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo5/p;

    invoke-direct {v0}, Lo5/p;-><init>()V

    sput-object v0, Lo5/p;->a:Lo5/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->g(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_15

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    :cond_15
    return-object v0
.end method
