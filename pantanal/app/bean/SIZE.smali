.class public interface abstract annotation Lpantanal/app/bean/SIZE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/SIZE$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->TYPE:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/SIZE$Companion;

.field public static final FOUR_PLUS_FOUR:I = 0x3

.field public static final NOTIFICATION_LG:I = 0x9

.field public static final NOTIFICATION_MD:I = 0x8

.field public static final NOTIFICATION_SM:I = 0x7

.field public static final N_PLUS_FOUR:I = 0x4

.field public static final ONE_PLUS_TWO:I = 0x5

.field public static final TWO_PLUS_FOUR:I = 0x2

.field public static final TWO_PLUS_TWO:I = 0x1

.field public static final WIDGET_ONE_PLUS_ONE:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/SIZE$Companion;->$$INSTANCE:Lpantanal/app/bean/SIZE$Companion;

    sput-object v0, Lpantanal/app/bean/SIZE;->Companion:Lpantanal/app/bean/SIZE$Companion;

    return-void
.end method
