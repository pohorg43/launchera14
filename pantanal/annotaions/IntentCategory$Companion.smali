.class public final Lpantanal/annotaions/IntentCategory$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/annotaions/IntentCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/annotaions/IntentCategory$Companion;

.field public static final INTENT_FROM_CLOUD:I = 0x1

.field public static final INTENT_FROM_DT_USER_HABIT:I = 0x2

.field public static final INTENT_FROM_GUARANTEED:I = 0x3

.field public static final INTENT_FROM_INSTALL:I = 0x4

.field public static final INTENT_FROM_RULE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/annotaions/IntentCategory$Companion;

    invoke-direct {v0}, Lpantanal/annotaions/IntentCategory$Companion;-><init>()V

    sput-object v0, Lpantanal/annotaions/IntentCategory$Companion;->$$INSTANCE:Lpantanal/annotaions/IntentCategory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
