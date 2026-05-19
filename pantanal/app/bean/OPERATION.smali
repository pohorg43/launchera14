.class public interface abstract annotation Lpantanal/app/bean/OPERATION;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/OPERATION$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/OPERATION$Companion;

.field public static final HOT:I = 0x3

.field public static final NEW:I = 0x2

.field public static final NONE:I = 0x1

.field public static final UNAVAILABLE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/OPERATION$Companion;->$$INSTANCE:Lpantanal/app/bean/OPERATION$Companion;

    sput-object v0, Lpantanal/app/bean/OPERATION;->Companion:Lpantanal/app/bean/OPERATION$Companion;

    return-void
.end method
