.class public final Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;

.field public static final ERROR_CODE_DATA_IS_NULL:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
