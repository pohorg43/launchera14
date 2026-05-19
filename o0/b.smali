.class public final synthetic Lo0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lo0/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lo0/b;

    invoke-direct {v0}, Lo0/b;-><init>()V

    sput-object v0, Lo0/b;->a:Lo0/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->a(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
