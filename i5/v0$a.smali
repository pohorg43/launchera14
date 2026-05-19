.class public final Li5/v0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Li5/w0;
    .registers 1

    sget-object p0, Li5/w0;->a:Li5/w0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NO_SOURCE"

    return-object p0
.end method
