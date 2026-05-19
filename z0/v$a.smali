.class public Lz0/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu1/a$b<",
        "Lz0/v<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 1

    new-instance p0, Lz0/v;

    invoke-direct {p0}, Lz0/v;-><init>()V

    return-object p0
.end method
