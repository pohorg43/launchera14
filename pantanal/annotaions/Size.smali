.class public interface abstract annotation Lpantanal/annotaions/Size;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/Size$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/annotaions/Size$Companion;

.field public static final FOUR_PLUS_FOUR:I = 0x3

.field public static final NOTIFICATION_LG:I = 0x9

.field public static final NOTIFICATION_MD:I = 0x8

.field public static final NOTIFICATION_SM:I = 0x7

.field public static final NOT_DEFINE:I = 0x0

.field public static final N_PLUS_FOUR:I = 0x4

.field public static final ONE_PLUS_TWO:I = 0x5

.field public static final SIZE_DEFAULT:I = 0x3e8

.field public static final TWO_PLUS_FOUR:I = 0x2

.field public static final TWO_PLUS_TWO:I = 0x1

.field public static final WIDGET_ONE_PLUS_ONE:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/Size$Companion;->$$INSTANCE:Lpantanal/annotaions/Size$Companion;

    sput-object v0, Lpantanal/annotaions/Size;->Companion:Lpantanal/annotaions/Size$Companion;

    return-void
.end method
