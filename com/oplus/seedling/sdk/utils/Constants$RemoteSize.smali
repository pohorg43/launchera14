.class public interface abstract annotation Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RemoteSize"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final NOTIFICATION_LG:Ljava/lang/String; = "notification_lg"

.field public static final NOTIFICATION_MD:Ljava/lang/String; = "notification_md"

.field public static final NOTIFICATION_SM:Ljava/lang/String; = "notification_sm"

.field public static final ONE_PLUS_TWO:Ljava/lang/String; = "1*2"

.field public static final TWO_PLUS_FOUR:Ljava/lang/String; = "2*4"

.field public static final TWO_PLUS_TWO:Ljava/lang/String; = "2*2"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$RemoteSize$Companion;

    return-void
.end method
