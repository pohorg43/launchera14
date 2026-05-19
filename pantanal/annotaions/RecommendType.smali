.class public interface abstract annotation Lpantanal/annotaions/RecommendType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/RecommendType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/annotaions/RecommendType$Companion;

.field public static final DEFAULT:I = 0x3

.field public static final NORMAL:I = 0x1

.field public static final OPT_REC:I = 0x4

.field public static final SYSTEM:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/RecommendType$Companion;->$$INSTANCE:Lpantanal/annotaions/RecommendType$Companion;

    sput-object v0, Lpantanal/annotaions/RecommendType;->Companion:Lpantanal/annotaions/RecommendType$Companion;

    return-void
.end method
