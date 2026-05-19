.class public final Lpantanal/app/app_card/engine/ISmartEngineError$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/app_card/engine/ISmartEngineError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/app_card/engine/ISmartEngineError$Companion;

.field public static final RENDER_CODE_NO:I = 0x0

.field public static final RENDER_CODE_URI_SECURITY:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/app_card/engine/ISmartEngineError$Companion;

    invoke-direct {v0}, Lpantanal/app/app_card/engine/ISmartEngineError$Companion;-><init>()V

    sput-object v0, Lpantanal/app/app_card/engine/ISmartEngineError$Companion;->$$INSTANCE:Lpantanal/app/app_card/engine/ISmartEngineError$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
