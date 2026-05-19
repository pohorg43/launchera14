.class public interface abstract Lpantanal/app/app_card/engine/ISmartEngineError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/app_card/engine/ISmartEngineError$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/app_card/engine/ISmartEngineError$Companion;

.field public static final RENDER_CODE_NO:I = 0x0

.field public static final RENDER_CODE_URI_SECURITY:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/app_card/engine/ISmartEngineError$Companion;->$$INSTANCE:Lpantanal/app/app_card/engine/ISmartEngineError$Companion;

    sput-object v0, Lpantanal/app/app_card/engine/ISmartEngineError;->Companion:Lpantanal/app/app_card/engine/ISmartEngineError$Companion;

    return-void
.end method


# virtual methods
.method public abstract onCall(Ljava/lang/String;I)V
.end method
