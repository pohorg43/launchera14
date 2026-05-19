.class public interface abstract Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;

.field public static final ERROR_CODE_DATA_IS_NULL:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;->Companion:Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
.end method
