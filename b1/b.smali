.class public Lb1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb1/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw0/c;Lb1/a$b;)V
    .registers 3

    return-void
.end method

.method public b(Lw0/c;)Ljava/io/File;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public clear()V
    .registers 1

    return-void
.end method
