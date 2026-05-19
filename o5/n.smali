.class public final synthetic Lo5/n;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/reflect/Field;",
        "Lo5/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo5/n;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo5/n;

    invoke-direct {v0}, Lo5/n;-><init>()V

    sput-object v0, Lo5/n;->a:Lo5/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    const-string p0, "<init>"

    return-object p0
.end method

.method public final getOwner()Lz4/g;
    .registers 1

    const-class p0, Lo5/y;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 1

    const-string p0, "<init>(Ljava/lang/reflect/Field;)V"

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/reflect/Field;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lo5/y;

    invoke-direct {p0, p1}, Lo5/y;-><init>(Ljava/lang/reflect/Field;)V

    return-object p0
.end method
