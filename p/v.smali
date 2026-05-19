.class public Lp/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/h0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp/v;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp/v;

    invoke-direct {v0}, Lp/v;-><init>()V

    sput-object v0, Lp/v;->a:Lp/v;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/c;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lp/p;->b(Lq/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
