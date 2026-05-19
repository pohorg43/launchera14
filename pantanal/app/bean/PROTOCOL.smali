.class public interface abstract annotation Lpantanal/app/bean/PROTOCOL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/PROTOCOL$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/PROTOCOL$Companion;

.field public static final JSON:I = 0x2

.field public static final NONE:I = -0x1

.field public static final PROTOBUF:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/PROTOCOL$Companion;->$$INSTANCE:Lpantanal/app/bean/PROTOCOL$Companion;

    sput-object v0, Lpantanal/app/bean/PROTOCOL;->Companion:Lpantanal/app/bean/PROTOCOL$Companion;

    return-void
.end method
