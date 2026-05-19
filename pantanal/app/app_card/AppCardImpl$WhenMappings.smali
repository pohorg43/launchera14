.class public final synthetic Lpantanal/app/app_card/AppCardImpl$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/app_card/AppCardImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lpantanal/app/ICardLifecycle$LifeCycleValue;->values()[Lpantanal/app/ICardLifecycle$LifeCycleValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lpantanal/app/ICardLifecycle$LifeCycleValue;->Create:Lpantanal/app/ICardLifecycle$LifeCycleValue;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lpantanal/app/app_card/AppCardImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
