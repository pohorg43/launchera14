.class public interface abstract annotation Lpantanal/app/bean/PRIORITY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/PRIORITY$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/PRIORITY$Companion;

.field public static final HIGH:I = 0x3

.field public static final LOW:I = 0x1

.field public static final NORMAL:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/PRIORITY$Companion;->$$INSTANCE:Lpantanal/app/bean/PRIORITY$Companion;

    sput-object v0, Lpantanal/app/bean/PRIORITY;->Companion:Lpantanal/app/bean/PRIORITY$Companion;

    return-void
.end method
