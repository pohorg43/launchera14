.class public interface abstract annotation Lpantanal/annotaions/EventCode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/EventCode$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CLICK:I = 0x1

.field public static final Companion:Lpantanal/annotaions/EventCode$Companion;

.field public static final EXPOSE:I = 0x2

.field public static final FIRST_RECOMMEND:I = 0x5

.field public static final INTENT_REMOVE_ORDER_VIEW:I = 0x8

.field public static final INTENT_SERVICE_CLOSE:I = 0xa

.field public static final INTENT_SERVICE_CLOSE_ONCE:I = 0x6

.field public static final LOAD_FAILED:I = 0x4

.field public static final REPLACE_EXTEND_TIME:I = 0x7

.field public static final SCENE_SERVICE_COMPOSE_FAILED:I = 0x9

.field public static final SELL_MODE_BUS_SUBWAY:I = 0x65

.field public static final SELL_MODE_EXPRESS_DELIVERY:I = 0x66

.field public static final SELL_MODE_FLIGHT:I = 0x68

.field public static final SELL_MODE_HIGH_SPEED_RAIL:I = 0x67

.field public static final SELL_MODE_SERVICE_INTRODUCTION:I = 0x64

.field public static final UNINTERESTED:I = 0x20

.field public static final UNRECOMMENDED:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/EventCode$Companion;->$$INSTANCE:Lpantanal/annotaions/EventCode$Companion;

    sput-object v0, Lpantanal/annotaions/EventCode;->Companion:Lpantanal/annotaions/EventCode$Companion;

    return-void
.end method
