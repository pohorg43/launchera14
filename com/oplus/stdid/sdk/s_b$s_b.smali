.class public Lcom/oplus/stdid/sdk/s_b$s_b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/stdid/sdk/s_b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s_b"
.end annotation


# static fields
.field public static final s_a:Lcom/oplus/stdid/sdk/s_b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/stdid/sdk/s_b;

    invoke-direct {v0}, Lcom/oplus/stdid/sdk/s_b;-><init>()V

    sput-object v0, Lcom/oplus/stdid/sdk/s_b$s_b;->s_a:Lcom/oplus/stdid/sdk/s_b;

    return-void
.end method
