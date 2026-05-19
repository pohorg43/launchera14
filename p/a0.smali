.class public Lp/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/h0<",
        "Ls/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp/a0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp/a0;

    invoke-direct {v0}, Lp/a0;-><init>()V

    sput-object v0, Lp/a0;->a:Lp/a0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/c;F)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lq/c;->k()Lq/c$b;

    move-result-object p0

    sget-object v0, Lq/c$b;->a:Lq/c$b;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lq/c;->a()V

    :cond_10
    invoke-virtual {p1}, Lq/c;->g()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lq/c;->g()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1a
    invoke-virtual {p1}, Lq/c;->e()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p1}, Lq/c;->o()V

    goto :goto_1a

    :cond_24
    if-eqz p0, :cond_29

    invoke-virtual {p1}, Lq/c;->c()V

    :cond_29
    new-instance p0, Ls/d;

    const/high16 p1, 0x42c80000  # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Ls/d;-><init>(FF)V

    return-object p0
.end method
