.class public interface abstract annotation Lpantanal/annotaions/ServiceCategory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/ServiceCategory$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/annotaions/ServiceCategory$Companion;

.field public static final NON_SYSTEM_SERVICE:I = 0x1

.field public static final SYSTEM_SERVICE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/ServiceCategory$Companion;->$$INSTANCE:Lpantanal/annotaions/ServiceCategory$Companion;

    sput-object v0, Lpantanal/annotaions/ServiceCategory;->Companion:Lpantanal/annotaions/ServiceCategory$Companion;

    return-void
.end method
