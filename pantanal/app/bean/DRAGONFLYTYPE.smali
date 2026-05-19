.class public interface abstract annotation Lpantanal/app/bean/DRAGONFLYTYPE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/DRAGONFLYTYPE$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/bean/DRAGONFLYTYPE$Companion;

.field public static final DYNAMIC:I = 0x1

.field public static final HOME:I = 0x2

.field public static final LAB:I = 0x3

.field public static final NORMAL:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/bean/DRAGONFLYTYPE$Companion;->$$INSTANCE:Lpantanal/app/bean/DRAGONFLYTYPE$Companion;

    sput-object v0, Lpantanal/app/bean/DRAGONFLYTYPE;->Companion:Lpantanal/app/bean/DRAGONFLYTYPE$Companion;

    return-void
.end method
