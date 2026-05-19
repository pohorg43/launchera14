.class public interface abstract Lcom/oplus/channel/server/IUserContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J \u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H&J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH&J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H&J \u0010\u001a\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H&J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH&J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0015\u001a\u00020\u0014H&J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0018H&J\u001a\u0010 \u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H&J\"\u0010 \u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\r\u001a\u00020\u0002H&J\u0010\u0010!\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H&J\u0018\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\"H&R\u001c\u0010)\u001a\u00020$8&@&X¦\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b\'\u0010(¨\u0006*"
    }
    d2 = {
        "Lcom/oplus/channel/server/IUserContext;",
        "",
        "",
        "getUserId",
        "Landroid/os/UserHandle;",
        "getUserHandle",
        "Landroid/content/Intent;",
        "intent",
        "Lh4/z;",
        "startActivity",
        "bindService",
        "Landroid/content/ServiceConnection;",
        "conn",
        "flags",
        "unbindService",
        "startService",
        "sendBroadcast",
        "Landroid/content/BroadcastReceiver;",
        "receiver",
        "registerReceiver",
        "Landroid/net/Uri;",
        "uri",
        "",
        "notifyForDescendants",
        "Landroid/database/ContentObserver;",
        "observer",
        "registerContentObserver",
        "",
        "providerAuthority",
        "Landroid/content/ContentProviderClient;",
        "acquireUnstableContentProviderClient",
        "unregisterContentObserver",
        "notifyChange",
        "unregisterReceiver",
        "Landroid/content/IntentFilter;",
        "filter",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "context",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
.end method

.method public abstract acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
.end method

.method public abstract bindService(Landroid/content/Intent;)V
.end method

.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getUserHandle()Landroid/os/UserHandle;
.end method

.method public abstract getUserId()I
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startService(Landroid/content/Intent;)V
.end method

.method public abstract unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public abstract unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
