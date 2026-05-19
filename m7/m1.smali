.class public final Lm7/m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/n1;


# instance fields
.field public final a:Lm7/c2;


# direct methods
.method public constructor <init>(Lm7/c2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/m1;->a:Lm7/c2;

    return-void
.end method


# virtual methods
.method public b()Lm7/c2;
    .registers 1

    iget-object p0, p0, Lm7/m1;->a:Lm7/c2;

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
