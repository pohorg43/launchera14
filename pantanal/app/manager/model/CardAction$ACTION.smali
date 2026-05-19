.class public interface abstract annotation Lpantanal/app/manager/model/CardAction$ACTION;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/manager/model/CardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/manager/model/CardAction$ACTION$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CLICK:I = 0x1

.field public static final CONFIGURATION_LIST:I = 0x5

.field public static final Companion:Lpantanal/app/manager/model/CardAction$ACTION$Companion;

.field public static final ENGINE_FUN:I = 0x6

.field public static final EXPOSED_STATE:I = 0x3

.field public static final INVALIDATE:I = 0x4

.field public static final LIFE_CIRCLE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction$ACTION$Companion;->$$INSTANCE:Lpantanal/app/manager/model/CardAction$ACTION$Companion;

    sput-object v0, Lpantanal/app/manager/model/CardAction$ACTION;->Companion:Lpantanal/app/manager/model/CardAction$ACTION$Companion;

    return-void
.end method
