.class public Li7/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/f$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li7/f$a;

    invoke-direct {v0}, Li7/f$a;-><init>()V

    sput-object v0, Li7/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p0}, Li7/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Li7/f;->a:Ljava/lang/Object;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x0

    :cond_8
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    instance-of v0, p0, Li7/f$b;

    if-eqz v0, :cond_16

    check-cast p0, Li7/f$b;

    iget-object p0, p0, Li7/f$b;->a:Ljava/lang/Throwable;

    if-eqz p0, :cond_10

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_10
    const/4 p0, 0x1

    invoke-static {p0}, Li7/f$b;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_16
    return-object p0
.end method
