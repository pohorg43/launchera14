.class public final Lpantanal/app/manager/model/CardAction$ACTION$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/manager/model/CardAction$ACTION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/manager/model/CardAction$ACTION$Companion;

.field public static final CLICK:I = 0x1

.field public static final CONFIGURATION_LIST:I = 0x5

.field public static final ENGINE_FUN:I = 0x6

.field public static final EXPOSED_STATE:I = 0x3

.field public static final INVALIDATE:I = 0x4

.field public static final LIFE_CIRCLE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/manager/model/CardAction$ACTION$Companion;

    invoke-direct {v0}, Lpantanal/app/manager/model/CardAction$ACTION$Companion;-><init>()V

    sput-object v0, Lpantanal/app/manager/model/CardAction$ACTION$Companion;->$$INSTANCE:Lpantanal/app/manager/model/CardAction$ACTION$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
