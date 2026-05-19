.class public final synthetic Lcom/android/launcher3/folder/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/folder/OplusFolderPagedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolderPagedView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/u;->a:Lcom/android/launcher3/folder/OplusFolderPagedView;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/u;->a:Lcom/android/launcher3/folder/OplusFolderPagedView;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->r(Lcom/android/launcher3/folder/OplusFolderPagedView;Lcom/android/launcher3/Alarm;)V

    return-void
.end method
