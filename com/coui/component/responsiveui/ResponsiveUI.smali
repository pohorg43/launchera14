.class public final Lcom/coui/component/responsiveui/ResponsiveUI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/ResponsiveUI$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/ResponsiveUI$Companion;

.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUI$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUI$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUI;->Companion:Lcom/coui/component/responsiveui/ResponsiveUI$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x3

    const-string v2, "ResponsiveUI"

    invoke-virtual {v0, v2, v1}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUI;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .registers 1

    sget-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUI;->a:Z

    return v0
.end method
