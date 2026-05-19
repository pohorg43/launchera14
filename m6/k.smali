.class public abstract Lm6/k;
.super Lm6/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/g<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lh4/z;->a:Lh4/z;

    invoke-direct {p0, v0}, Lm6/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
