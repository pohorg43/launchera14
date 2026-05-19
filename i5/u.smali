.class public final Li5/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li5/a$a<",
        "Li5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Li5/u;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li5/u;

    invoke-direct {v0}, Li5/u;-><init>()V

    sput-object v0, Li5/u;->a:Li5/u;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
