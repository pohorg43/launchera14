.class public Le1/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/o<",
        "Ld1/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ld1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/m<",
            "Ld1/g;",
            "Ld1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Ld1/m;-><init>(J)V

    iput-object v0, p0, Le1/a$a;->a:Ld1/m;

    return-void
.end method


# virtual methods
.method public build(Ld1/r;)Ld1/n;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/r;",
            ")",
            "Ld1/n<",
            "Ld1/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Le1/a;

    iget-object p0, p0, Le1/a$a;->a:Ld1/m;

    invoke-direct {p1, p0}, Le1/a;-><init>(Ld1/m;)V

    return-object p1
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
