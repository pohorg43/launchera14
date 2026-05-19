.class public final Lj5/h$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lh6/c;)Lj5/c;
    .registers 2

    const-string p0, "fqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Lh6/c;)Z
    .registers 2

    invoke-static {p0, p1}, Lj5/h$b;->b(Lj5/h;Lh6/c;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj5/c;",
            ">;"
        }
    .end annotation

    sget-object p0, Li4/x;->a:Li4/x;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "EMPTY"

    return-object p0
.end method
