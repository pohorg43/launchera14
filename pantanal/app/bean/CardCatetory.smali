.class public interface abstract annotation Lpantanal/app/bean/CardCatetory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/CardCatetory$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final APP:I = 0x2

.field public static final CONTENT_OPERATION:I = 0x3

.field public static final Companion:Lpantanal/app/bean/CardCatetory$Companion;

.field public static final INSTANT:I = 0x1

.field public static final SEEDING:I = 0x64

.field public static final SERVICE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/CardCatetory$Companion;->$$INSTANCE:Lpantanal/app/bean/CardCatetory$Companion;

    sput-object v0, Lpantanal/app/bean/CardCatetory;->Companion:Lpantanal/app/bean/CardCatetory$Companion;

    return-void
.end method
