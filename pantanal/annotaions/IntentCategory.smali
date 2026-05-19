.class public interface abstract annotation Lpantanal/annotaions/IntentCategory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/IntentCategory$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/annotaions/IntentCategory$Companion;

.field public static final INTENT_FROM_CLOUD:I = 0x1

.field public static final INTENT_FROM_DT_USER_HABIT:I = 0x2

.field public static final INTENT_FROM_GUARANTEED:I = 0x3

.field public static final INTENT_FROM_INSTALL:I = 0x4

.field public static final INTENT_FROM_RULE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/IntentCategory$Companion;->$$INSTANCE:Lpantanal/annotaions/IntentCategory$Companion;

    sput-object v0, Lpantanal/annotaions/IntentCategory;->Companion:Lpantanal/annotaions/IntentCategory$Companion;

    return-void
.end method
