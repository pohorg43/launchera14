.class public abstract Ln6/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ln6/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Z
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ln6/a;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln6/a;->a()I

    move-result v0

    invoke-virtual {p1}, Ln6/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lk/b;->f(II)I

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ln6/a;->b()Z

    move-result p0

    if-nez p0, :cond_22

    invoke-virtual {p1}, Ln6/a;->b()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method
