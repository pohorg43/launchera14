.class public Lcom/android/launcher/wallpaper/WallpaperBitmapManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OSENSE_NOTIFY_MSG_SRC:I = 0xb

.field private static final TAG:Ljava/lang/String; = "WallpaperBitmapManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyWallpaperChanged(ZLjava/lang/Class;)V
    .registers 21

    move/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string/jumbo v2, "notifyWallpaperChanged isLiveWallpaper = "

    const-string v3, "Wallpapers"

    const-string v4, "WallpaperBitmapManager"

    invoke-static {v2, v0, v3, v4}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_23

    new-instance v0, Lcom/oplus/osense/info/OsenseNotifyRequest;

    const/16 v6, 0xb

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "LiveWallpaper"

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/oplus/osense/info/OsenseNotifyRequest;-><init>(IIIIILjava/lang/String;)V

    goto :goto_33

    :cond_23
    new-instance v0, Lcom/oplus/osense/info/OsenseNotifyRequest;

    const/16 v13, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "LiveWallpaper"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/oplus/osense/info/OsenseNotifyRequest;-><init>(IIIIILjava/lang/String;)V

    :goto_33
    invoke-virtual {v1, v0}, Lcom/oplus/osense/OsenseResClient;->osenseSetNotification(Lcom/oplus/osense/info/OsenseNotifyRequest;)V

    :cond_36
    return-void
.end method
