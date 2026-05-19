.class public Lio/branch/search/ClickEvent;
.super Lio/branch/search/AnalyticsEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ClickEvent$UiType;,
        Lio/branch/search/ClickEvent$ClickType;
    }
.end annotation


# static fields
.field public static final aAPP_ICON:Ljava/lang/String; = "APP_ICON"

.field public static final aCLICK:Ljava/lang/String; = "CLICK"

.field public static final aFOLDER_DEEPVIEW:Ljava/lang/String; = "FOLDER_DEEPVIEW"

.field public static final aLONG_CLICK:Ljava/lang/String; = "LONG_CLICK"

.field public static final aOTHER:Ljava/lang/String; = "OTHER"

.field public static final aPINNED_SHORTCUT:Ljava/lang/String; = "PINNED_SHORTCUT"

.field public static final aSHORTCUT:Ljava/lang/String; = "SHORTCUT"

.field public static final aSHORTCUT_DEEPVIEW:Ljava/lang/String; = "SHORTCUT_DEEPVIEW"

.field public static final aWIDGET:Ljava/lang/String; = "WIDGET"


# instance fields
.field public final c:Ljava/lang/String;
    .annotation build Lio/branch/search/ClickEvent$UiType;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lio/branch/search/ClickEvent$ClickType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lio/branch/search/ClickEvent$ClickType;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lio/branch/search/ClickEvent$UiType;
        .end annotation
    .end param

    const-string v0, "external_click_events"

    invoke-direct {p0, v0}, Lio/branch/search/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/branch/search/ClickEvent;->d:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/ClickEvent;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lio/branch/search/AnalyticsEvent;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "external_click_ui_type"

    :try_start_6
    iget-object v2, p0, Lio/branch/search/ClickEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_13

    const-string v1, "external_click_type"

    :try_start_d
    iget-object p0, p0, Lio/branch/search/ClickEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const-string v1, "ClickEvent.toJson"

    invoke-static {v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/ClickEvent;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ClickEvent"

    invoke-virtual {p0, v0, p1, p2}, Lio/branch/search/AnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
