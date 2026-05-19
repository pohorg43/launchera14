.class public interface abstract annotation Lpantanal/annotaions/ServiceType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/ServiceType$Companion;
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

.field public static final Companion:Lpantanal/annotaions/ServiceType$Companion;

.field public static final INSTANT:I = 0x1

.field public static final OPERATION_WIDGET:I = 0x5

.field public static final SEEDLING:I = 0x64

.field public static final SERVICE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/ServiceType$Companion;->$$INSTANCE:Lpantanal/annotaions/ServiceType$Companion;

    sput-object v0, Lpantanal/annotaions/ServiceType;->Companion:Lpantanal/annotaions/ServiceType$Companion;

    return-void
.end method
