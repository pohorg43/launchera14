.class public interface abstract annotation Lcom/pantanal/server/content/utils/Constants$ServiceCategory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ServiceCategory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/utils/Constants$ServiceCategory$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"
    }
    d2 = {
        "Lcom/pantanal/server/content/utils/Constants$ServiceCategory;",
        "",
        "Companion",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/pantanal/server/content/utils/Constants$ServiceCategory$Companion;

.field public static final NON_SYSTEM_SERVICE:I = 0x1

.field public static final SYSTEM_SERVICE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/utils/Constants$ServiceCategory$Companion;->$$INSTANCE:Lcom/pantanal/server/content/utils/Constants$ServiceCategory$Companion;

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$ServiceCategory;->Companion:Lcom/pantanal/server/content/utils/Constants$ServiceCategory$Companion;

    return-void
.end method
