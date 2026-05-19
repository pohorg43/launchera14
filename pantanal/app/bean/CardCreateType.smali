.class public interface abstract annotation Lpantanal/app/bean/CardCreateType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/CardCreateType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/CardCreateType$Companion;

.field public static final RECOMMEND:I = 0x2

.field public static final SUBSCRIBE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/CardCreateType$Companion;->$$INSTANCE:Lpantanal/app/bean/CardCreateType$Companion;

    sput-object v0, Lpantanal/app/bean/CardCreateType;->Companion:Lpantanal/app/bean/CardCreateType$Companion;

    return-void
.end method
