.class public interface abstract annotation Lpantanal/content/gadget/ContextManager$ConfigProperty;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/content/gadget/ContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ConfigProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;

.field public static final LANGUAGE:I = 0x2

.field public static final UI_MODE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;->$$INSTANCE:Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;

    sput-object v0, Lpantanal/content/gadget/ContextManager$ConfigProperty;->Companion:Lpantanal/content/gadget/ContextManager$ConfigProperty$Companion;

    return-void
.end method
